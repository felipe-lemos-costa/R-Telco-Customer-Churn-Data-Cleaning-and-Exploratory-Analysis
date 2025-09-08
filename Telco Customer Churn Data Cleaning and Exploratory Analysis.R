# Load required packages
library(tidyverse)
library(readr)
library(janitor)
library(ggplot2)
library(scales)

# Set the working directory
setwd("C:/Users/felip/Projects/R - Telco Customer Churn Data Cleaning and Exploratory Analysis")


# Import the dataset
churn <- read_csv("Telco-Customer-Churn.csv") %>%
  clean_names()

# Display the structure and first rows of the dataset
glimpse(churn)

# Perform basic data cleaning
churn <- churn %>%
  filter(!is.na(total_charges)) %>%
  mutate(
    churn = as.factor(churn),
    senior_citizen = as.factor(senior_citizen),
    contract = as.factor(contract)
  )

# Calculate overall churn rate
churn %>%
  count(churn) %>%
  mutate(percent = n / sum(n)) %>%
  ggplot(aes(x = churn, y = percent, fill = churn)) +
  geom_col() +
  geom_text(aes(label = scales::percent(percent, accuracy = 0.1)), vjust = -0.5, size = 5) +
  scale_y_continuous(labels = scales::percent_format(), limits = c(0, 1)) +
  scale_fill_manual(values = c("No" = "green", "Yes" = "red")) +
  labs(title = "Churn Rate (Total)", x = "Churn", y = "Percent") +
  theme_minimal()
  
ggsave("C:/Users/felip/Projects/R - Telco Customer Churn Data Cleaning and Exploratory Analysis/img2.jpeg", width = 6, height = 4)

# Churn rate by contract type
churn %>%
  group_by(contract, churn) %>%
  summarise(n = n()) %>%
  mutate(percent = n / sum(n)) %>%
  ggplot(aes(x = contract, y = percent, fill = churn)) +
  geom_col() +
  geom_text(aes(label = scales::percent(percent, accuracy = 0.1)),
            position = position_stack(vjust = 0.5), size = 4) +
  scale_y_continuous(labels = scales::percent_format(), limits = c(0, 1)) +
  scale_fill_manual(values = c("No" = "green", "Yes" = "red")) +
  labs(title = "Churn Rate by Contract Type", x = "Contract Type", y = "Percent") +
  theme_minimal()

ggsave("C:/Users/felip/Projects/R - Telco Customer Churn Data Cleaning and Exploratory Analysis/img3.jpeg", width = 6, height = 4)


# Churn rate by monthly charge group
churn %>%
  mutate(charge_group = case_when(
    monthly_charges < 30 ~ "< $30",
    monthly_charges < 60 ~ "$30–$59",
    monthly_charges < 90 ~ "$60–89",
    TRUE ~ "$90+"
  )) %>%
  mutate(charge_group = factor(charge_group, levels = c("< $30", "$30–$59", "$60–$89", "$90+"))) %>%
  group_by(charge_group, churn) %>%
  summarise(n = n(), .groups = "drop") %>%
  mutate(percent = n / sum(n)) %>%
  ggplot(aes(x = charge_group, y = percent, fill = churn)) +
  geom_col() +
  geom_text(aes(label = scales::percent(percent, accuracy = 0.1)),
            position = position_stack(vjust = 0.5), size = 4, color = "white") +
  scale_y_continuous(labels = scales::percent_format()) +
  scale_fill_manual(values = c("No" = "green", "Yes" = "red")) +
  labs(title = "Churn by Monthly Charge Group", x = "Charge Range", y = "Percent") +
  theme_minimal()

ggsave("C:/Users/felip/Projects/R - Telco Customer Churn Data Cleaning and Exploratory Analysis/img4.jpeg", width = 6, height = 4)